// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/dao/datasource-impl/auth_ds_impl/auth_ds_impl.dart' as _i9;
import '../../data/dao/datasource-impl/brands_ds_impl/brands_ds_impl.dart'
    as _i7;
import '../../data/dao/datasource-impl/cart_ds_impl/cart_ds_impl.dart' as _i17;
import '../../data/dao/datasource-impl/categories_ds_imp/categories_ds_imp.dart'
    as _i5;
import '../../data/dao/datasource-impl/products_ds_impl/product_ds_impl.dart'
    as _i22;
import '../../data/dao/datasource-impl/sub_categories_ds_imp/sub_categories_ds_imp.dart'
    as _i13;
import '../../data/dao/datasource_contract/auth_ds/auth_ds.dart' as _i8;
import '../../data/dao/datasource_contract/brands_ds/brands_ds.dart' as _i6;
import '../../data/dao/datasource_contract/cart_ds/cart_ds.dart' as _i16;
import '../../data/dao/datasource_contract/categories_ds/categories_ds.dart'
    as _i4;
import '../../data/dao/datasource_contract/products_ds/product_ds.dart' as _i21;
import '../../data/dao/datasource_contract/sub_category_ds/sub_categories_ds.dart'
    as _i12;
import '../../data/repository_implementation/auth_repo_impl/auth_repo_impl.dart'
    as _i15;
import '../../data/repository_implementation/brands_repo_impl/brands_repo_impl.dart'
    as _i11;
import '../../data/repository_implementation/cart_repo_impl/cart_repo_impl.dart'
    as _i32;
import '../../data/repository_implementation/categories_repo_impl/categories_repo_impl.dart'
    as _i24;
import '../../data/repository_implementation/products_repo_impl/Products_repo_impl.dart'
    as _i29;
import '../../data/repository_implementation/sub_categories_repo_imp/sub_categories_repo_imp.dart'
    as _i19;
import '../../domain/repository_contract/auth_repo/auth_repo.dart' as _i14;
import '../../domain/repository_contract/brands_repo/brands_repo.dart' as _i10;
import '../../domain/repository_contract/cart_repo/cart_repo.dart' as _i31;
import '../../domain/repository_contract/category_repo/category_repo.dart'
    as _i23;
import '../../domain/repository_contract/products_repo/products_repo.dart'
    as _i28;
import '../../domain/repository_contract/sub_categories_repo/sub_categories_repo.dart'
    as _i18;
import '../../domain/use_cases/add_to_cart_use_case/add_to_cart_use_case.dart'
    as _i37;
import '../../domain/use_cases/add_to_cart_use_case/delete_from_cart.dart'
    as _i39;
import '../../domain/use_cases/add_to_cart_use_case/get_cart_use_case.dart'
    as _i38;
import '../../domain/use_cases/add_to_cart_use_case/update_cart_use_case.dart'
    as _i40;
import '../../domain/use_cases/auth_use_case/sign_in_use_case.dart' as _i25;
import '../../domain/use_cases/auth_use_case/sign_up_use_case.dart' as _i26;
import '../../domain/use_cases/get_brands_use_case/get_brands_use_case.dart'
    as _i20;
import '../../domain/use_cases/get_category_use_case.dart' as _i30;
import '../../domain/use_cases/get_most_selling_products_use_case/get_most_selling_products_use_case.dart'
    as _i35;
import '../../domain/use_cases/get_sub_categories_use_case/get_sub_categories_use_case.dart'
    as _i34;
import '../../presentation/cart/view_model/view_model_cubit.dart' as _i42;
import '../../presentation/home/login_screen/login_view_model.dart' as _i27;
import '../../presentation/home/register_screen/register_view_mode/sign_up__view_mode.dart'
    as _i33;
import '../../presentation/home/tabs/Categories_tab/categories_tab_view_model.dart'
    as _i36;
import '../../presentation/home/tabs/home_tab/viewmodel/home_tab_view_model.dart'
    as _i41;
import '../api/api_manager/api_manager.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.CategoriesDataSource>(
        () => _i5.CategoriesDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.BrandsDataSource>(
        () => _i7.BrandsDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i8.AuthDataSource>(
        () => _i9.AuthDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i10.BrandsRepo>(
        () => _i11.BrandsRepoImpl(gh<_i6.BrandsDataSource>()));
    gh.factory<_i12.SubCategoriesDataSource>(
        () => _i13.SubCategoriesDataSourceImp(gh<_i3.ApiManager>()));
    gh.factory<_i14.AuthRepo>(
        () => _i15.AuthRepoImpl(gh<_i8.AuthDataSource>()));
    gh.factory<_i16.CartDataSource>(
        () => _i17.CartDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i18.SubCategoriesRepo>(
        () => _i19.SubCategoriesRepoImpl(gh<_i12.SubCategoriesDataSource>()));
    gh.factory<_i20.GetBrandsUseCase>(
        () => _i20.GetBrandsUseCase(gh<_i10.BrandsRepo>()));
    gh.factory<_i21.ProductsDataSource>(
        () => _i22.ProductsDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i23.CategoriesRepo>(
        () => _i24.CategoriesRepoImpl(gh<_i4.CategoriesDataSource>()));
    gh.factory<_i25.SignInUseCase>(
        () => _i25.SignInUseCase(gh<_i14.AuthRepo>()));
    gh.factory<_i26.SignUpUseCase>(
        () => _i26.SignUpUseCase(gh<_i14.AuthRepo>()));
    gh.factory<_i27.LoginViewModel>(
        () => _i27.LoginViewModel(gh<_i25.SignInUseCase>()));
    gh.factory<_i28.ProductsRepo>(
        () => _i29.ProductsRepoImpl(gh<_i21.ProductsDataSource>()));
    gh.factory<_i30.GetCategoriesUseCase>(
        () => _i30.GetCategoriesUseCase(gh<_i23.CategoriesRepo>()));
    gh.factory<_i31.CartRepo>(
        () => _i32.CartRepoImpl(gh<_i16.CartDataSource>()));
    gh.factory<_i33.SignUpViewModel>(
        () => _i33.SignUpViewModel(gh<_i26.SignUpUseCase>()));
    gh.factory<_i34.getSubCategoriesOfSpecificCategoryUseCase>(() =>
        _i34.getSubCategoriesOfSpecificCategoryUseCase(
            gh<_i18.SubCategoriesRepo>()));
    gh.factory<_i35.GetMostSellingProductsUseCase>(
        () => _i35.GetMostSellingProductsUseCase(gh<_i28.ProductsRepo>()));
    gh.factory<_i36.CategoriesTabViewModel>(() => _i36.CategoriesTabViewModel(
          gh<_i30.GetCategoriesUseCase>(),
          gh<_i34.getSubCategoriesOfSpecificCategoryUseCase>(),
        ));
    gh.factory<_i37.AddToCartUseCase>(
        () => _i37.AddToCartUseCase(gh<_i31.CartRepo>()));
    gh.factory<_i38.GetCartUseCase>(
        () => _i38.GetCartUseCase(gh<_i31.CartRepo>()));
    gh.factory<_i39.DeleteFromCartUseCase>(
        () => _i39.DeleteFromCartUseCase(gh<_i31.CartRepo>()));
    gh.factory<_i40.UpDateCartUseCase>(
        () => _i40.UpDateCartUseCase(gh<_i31.CartRepo>()));
    gh.factory<_i41.HomeTabViewModel>(() => _i41.HomeTabViewModel(
          gh<_i37.AddToCartUseCase>(),
          gh<_i30.GetCategoriesUseCase>(),
          gh<_i20.GetBrandsUseCase>(),
          gh<_i35.GetMostSellingProductsUseCase>(),
        ));
    gh.factory<_i42.CartViewModel>(() => _i42.CartViewModel(
          gh<_i38.GetCartUseCase>(),
          gh<_i39.DeleteFromCartUseCase>(),
          gh<_i40.UpDateCartUseCase>(),
        ));
    return this;
  }
}
