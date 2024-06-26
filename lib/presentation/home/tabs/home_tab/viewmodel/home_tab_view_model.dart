import 'package:ecommerce/domain/entites/BrandEntity.dart';
import 'package:ecommerce/domain/use_cases/get_brands_use_case/get_brands_use_case.dart';
import 'package:ecommerce/domain/use_cases/get_category_use_case.dart';
import 'package:ecommerce/domain/use_cases/get_most_selling_products_use_case/get_most_selling_products_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/entites/CategoryEntity.dart';
import '../../../../../domain/entites/ProductEntity.dart';
@injectable
class HomeTabViewModel extends Cubit<HomeTabStates> {
  @factoryMethod
  HomeTabViewModel(this.categoriesUseCase,this.brandsUseCase,this.MostSellingProductsUseCase) : super(HomeTabInitialState());
  static HomeTabViewModel get(context) => BlocProvider.of(context);
  GetCategoriesUseCase categoriesUseCase;
  GetBrandsUseCase brandsUseCase;
  GetMostSellingProductsUseCase MostSellingProductsUseCase;

  getCategory() async {
    emit(CategoriesLoadingState());
    var results = await categoriesUseCase.call();
    results.fold((categories) {
      emit(CategoriesSuccessState(categories));
    }, (error) {
      emit(CategoriesErrorState(error));
    });
  }
  getBrands()async{
    emit(BrandsInitialState());
    var result=await brandsUseCase.call();
    result.fold((brands) {
      emit(BrandsSuccessState(brands));
    }
    , (error) {
    emit(BrandsErrorState(error));
  });
  }
  getMostSellingProducts()async{
    emit(mostSellingCategoryProductsLoadingState());
    var result=await MostSellingProductsUseCase.call();
    result.fold((products) {
      emit(mostSellingCategoryProductsSuccessState(products));
    }
        , (error) {
          emit(mostSellingCategoryProductsErorrState(error));
        });
  }
}

abstract class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates {}

class CategoriesLoadingState extends HomeTabStates {}

class CategoriesSuccessState extends HomeTabStates {
  List<CategoryEntity> categories;
  CategoriesSuccessState(this.categories);
}

class CategoriesErrorState extends HomeTabStates {
  String error;
  CategoriesErrorState(this.error);
}

class BrandsInitialState extends HomeTabStates {}
class BrandsLoadingState extends HomeTabStates {}
class BrandsSuccessState extends HomeTabStates {
  List<BrandEntity> brands;
  BrandsSuccessState(this.brands);
}
class BrandsErrorState extends HomeTabStates {
  String error;
  BrandsErrorState(this.error);
}
///most selling category products
class mostSellingCategoryProductsLoadingState extends HomeTabStates {}
class mostSellingCategoryProductsSuccessState extends HomeTabStates {
  List<ProductEntity>products;
  mostSellingCategoryProductsSuccessState(this.products);
}
class mostSellingCategoryProductsErorrState extends HomeTabStates {
  String error;
  mostSellingCategoryProductsErorrState(this.error);
}

