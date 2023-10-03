/// enums for side menu
enum CIBILScoreType {
  getCibilScore(0),
  refreshCibilScore(1),
  checkCibilScore(2);

  final int value;

  const CIBILScoreType(this.value);
}

/// Enum for Loan Type
enum LoanType {
  personalLoan,
  homeLoan,
  businessLoan,
  goldLoan,
  lapLoan,
}

enum Environment { stage, production }
enum ErrorType {
  connectTimeout,
  receiveTimeout,
  cancel,
  response,
  noInternetConnection,
  serverNotRespond,
  other
}