library services;

class AuthServiceStub {
  Future<bool> isLoggedIn() async => true;
}

class PricingServiceStub {
  double laborPrice(String category, int level) => 0.0;
}
