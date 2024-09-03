import 'package:task/services/category.dart';

class CategoryOperations{
  CategoryOperations._(){}
  static List<Category> getcategories(){
    return <Category>[
      Category('Top songs','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnlT75OAOnZfghmLJm441GZWY8SmeGgn0WFA&s'),
      Category('Bollywood', 'https://c-fa.cdn.smule.com/rs-s79/arr/73/bd/1bc8ee23-a99b-4114-886c-10fb6528be04.jpg'),
      Category('Bollywood', 'https://c-fa.cdn.smule.com/rs-s79/arr/73/bd/1bc8ee23-a99b-4114-886c-10fb6528be04.jpg'),
      Category('Top songs','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnlT75OAOnZfghmLJm441GZWY8SmeGgn0WFA&s')
    ];
  }
}