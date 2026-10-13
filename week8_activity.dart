int checkStudentScore(int score) {
  if (score < 0 || score > 100) {
    throw Exception("Score must be between 0 and 100.");
  }

  for (int i = 1; i <= 3; i++) {
    print("Checking score... $i");
  }

  if (score >= 75) {
    print("Result: Passed!");
  } else {
    print("Result: Failed.");
  }

  return score;
}

void main() {
  try {
    print("Student Score Checker");

    String input = "85";

    int score = int.parse(input);

    int result = checkStudentScore(score);

    print("Final score: $result");
  } catch (e) {
    print("Error: $e");
    print("Please enter a valid score from 0 to 100.");
  }
}
