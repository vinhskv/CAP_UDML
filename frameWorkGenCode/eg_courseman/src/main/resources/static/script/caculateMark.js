function calculateFinalGrade() {
            const internalMark = parseFloat(document.getElementById('internalMark').value) || 0;
            const examMark = parseFloat(document.getElementById('examMark').value) || 0;
            const finalGrade = (examMark * 8 + internalMark * 3) / 10;
            document.getElementById('finalGrade').value = finalGrade.toFixed(2);
        }
 