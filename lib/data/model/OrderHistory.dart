class OrderHistory {
  String productTitle;
  String productDescription;
  String productBannerUrl;
  String orderId;
  double totalAmount;
  int quantity;
  String orderStatus;

  OrderHistory(
      this.productTitle,
      this.productDescription,
      this.productBannerUrl,
      this.orderId,
      this.totalAmount,
      this.quantity,
      this.orderStatus);
}
