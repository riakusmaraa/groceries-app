class detailProduct {
  String name;
  String price;
  String description;
  String image;

  detailProduct({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });
}

var detailProductList = [
  detailProduct(
    name: 'Petai',
    price: '15.00',
    description: 'Petai yang bernama ilmiah Parkia speciosa juga terkenal di beberapa negara Asia Tenggara seperti Malaysia, Singapura, Thailand, dan Laos.',
    image: 'images/pete.png'
  ),
];
