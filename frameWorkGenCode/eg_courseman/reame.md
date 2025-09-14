# Kiến trúc hệ thống validation và tính toán tự động trong ứng dụng

## Vấn đề đã phát hiện

Khi xem xét code, tôi đã phát hiện ra một vấn đề trong cấu hình OCLConfig. Cụ thể là đang có sự nhầm lẫn giữa hai kiểu annotation:

1. **Annotation tính toán tự động**: `@Sum` và `@SumProduct`
   - Mục đích: Tính các giá trị tự động cho các field như `totalCredits` và `sumProduct`
   - Xử lý bởi: `OCLProcessor` với `SumValidator` và `SumProductValidator`

2. **Annotation validation**: `@SumConstraint` và `@AverageConstraint`
   - Mục đích: Kiểm tra ràng buộc về tín chỉ và điểm trung bình
   - Xử lý bởi: Bean Validation API với `SumConstraintValidator` và `AverageConstraintValidator`
   - Đối tượng validation: `Enrolment` (không phải `Student` hay generic Object)

Vấn đề lớn nhất là trong OCLConfig, hai loại validator này được đăng ký cùng một chỗ, mặc dù chúng hoạt động khác nhau.

## Cách tiếp cận đúng

### 1. Tách biệt rõ ràng giữa hai loại annotation

#### a. Annotation tính toán tự động
- `@Sum` và `@SumProduct` được xử lý bởi `OCLProcessor`
- Đăng ký validators tương ứng trong OCLConfig:
  ```java
  validators.put(Sum.class, sumValidator());
  validators.put(SumProduct.class, sumProductValidator());
  ```

#### b. Annotation validation
- `@SumConstraint` và `@AverageConstraint` được xử lý bởi Bean Validation API
- Được khởi tạo như bean Spring nhưng không cần đăng ký trong OCLProcessor:
  ```java
  @Bean
  public SumConstraintValidator sumConstraintValidator() {
      // Khởi tạo validator
      return new SumConstraintValidator();
  }
  ```

### 2. Phân tách rõ ràng trong OCLProcessor

- OCLProcessor chỉ xử lý các annotation tính toán tự động:
  ```java
  private void processFieldAnnotations(Object entity) {
      // Chỉ xử lý @Sum và @SumProduct
      // Không xử lý @SumConstraint và @AverageConstraint
  }
  ```

## Lợi ích của cách tiếp cận mới

1. **Rõ ràng về mặt kiến trúc**: Tách biệt rõ ràng giữa tính toán và validation
2. **Phù hợp với Java Bean Validation**: Tuân thủ chuẩn JSR-380
3. **Dễ bảo trì**: Mỗi validator chỉ tập trung vào một nhiệm vụ
4. **Tránh xung đột**: Không có sự chồng chéo giữa hai cơ chế

## Cách hoạt động mới

### 1. Khi tạo hoặc cập nhật một Enrolment

1. Bean Validation API sẽ gọi `SumConstraintValidator` và `AverageConstraintValidator` 
2. Các validator này sẽ kiểm tra ràng buộc về tổng tín chỉ và điểm trung bình
3. Nếu vi phạm, quá trình lưu sẽ bị hủy và ném ra ConstraintViolationException

### 2. Khi cần tính toán lại giá trị cho Student

1. `OCLProcessor` sẽ được gọi (thường qua EntityManagerListener hoặc service)
2. `OCLProcessor` tìm các field có annotation `@Sum` và `@SumProduct`
3. Gọi `SumValidator` và `SumProductValidator` để tính toán giá trị
4. Cập nhật giá trị vào các field tương ứng

## Tổng kết

Bằng cách tách biệt rõ ràng giữa hai cơ chế, hệ thống sẽ:
1. Hoạt động chính xác hơn
2. Dễ hiểu và bảo trì hơn
3. Tuân thủ các chuẩn và best practices
4. Tránh các lỗi khó phát hiện do chồng chéo trách nhiệm