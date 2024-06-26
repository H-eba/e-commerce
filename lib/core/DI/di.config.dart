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
import '../../data/dao/datasource-impl/categories_ds_imp/categories_ds_imp.dart'
    as _i5;
import '../../data/dao/datasource-impl/products_ds_impl/product_ds_impl.dart'
    as _i21;
import '../../data/dao/datasource-impl/sub_categories_ds_imp/sub_categories_ds_imp.dart'
    as _i14;
import '../../data/dao/datasource_contract/auth_ds/auth_ds.dart' as _i8;
import '../../data/dao/datasource_contract/brands_ds/brands_ds.dart' as _i6;
import '../../data/dao/datasource_contract/categories_ds/categories_ds.dart'
    as _i4;
import '../../data/dao/datasource_contract/products_ds/product_ds.dart' as _i20;
import '../../data/dao/datasource_contract/sub_category_ds/sub_categories_ds.dart'
    as _i13;
import '../../data/repository_implementation/auth_repo_impl/auth_repo_impl.dart'
    as _i16;
import '../../data/repository_implementation/brands_repo_impl/brands_repo_impl.dart'
    as _i11;
import '../../data/repository_implementation/categories_repo_impl/categories_repo_impl.dart'
    as _i23;
import '../../data/repository_implementation/products_repo_impl/Products_repo_impl.dart'
    as _i26;
import '../../data/repository_implementation/sub_categories_repo_imp/sub_categories_repo_imp.dart'
    as _i18;
import '../../domain/repository_contract/auth_repo/auth_repo.dart' as _i15;
import '../../domain/repository_contract/brands_repo/brands_repo.dart' as _i10;
import '../../domain/repository_contract/category_repo/category_repo.dart'
    as _i22;
import '../../domain/repository_contract/products_repo/products_repo.dart'
    as _i25;
import '../../domain/repository_contract/sub_categories_repo/sub_categories_repo.dart'
    as _i17;
import '../../domain/use_cases/auth_use_case/sign_up_use_case.dart' as _i24;
import '../../domain/use_cases/get_brands_use_case/get_brands_use_case.dart'
    as _i19;
import '../../domain/use_cases/get_category_use_case.dart' as _i27;
import '../../domain/use_cases/get_most_selling_products_use_case/get_most_selling_products_use_case.dart'
    as _i30;
import '../../domain/use_cases/get_sub_categories_use_case/get_sub_categories_use_case.dart'
    as _i29;
import '../../presentation/home/tabs/Categories_tab/categories_tab_view_model.dart'
    as _i12;
import '../../presentation/home/tabs/home_tab/viewmodel/home_tab_view_model.dart'
    as _i31;
import '../../presentation/registerl/register_view_mode/sign_up__view_mode.dart'
    as _i28;
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
    gh.factory<_i12.CategoriesTabViewModel>(
        () => _i12.CategoriesTabViewModel.get(gh<dynamic>()));
    gh.factory<_i13.SubCategoriesDataSource>(
        () => _i14.SubCategoriesDataSourceImp(gh<_i3.ApiManager>()));
    gh.factory<_i15.AuthRepo>(
        () => _i16.AuthRepoImpl(gh<_i8.AuthDataSource>()));
    gh.factory<_i17.SubCategoriesRepo>(
        () => _i18.SubCategoriesRepoImpl(gh<_i13.SubCategoriesDataSource>()));
    gh.factory<_i19.GetBrandsUseCase>(
        () => _i19.GetBrandsUseCase(gh<_i10.BrandsRepo>()));
    gh.factory<_i20.ProductsDataSource>(
        () => _i21.ProductsDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i22.CategoriesRepo>(
        () => _i23.CategoriesRepoImpl(gh<_i4.CategoriesDataSource>()));
    gh.factory<_i24.SignUpUseCase>(
        () => _i24.SignUpUseCase(gh<_i15.AuthRepo>()));
    gh.factory<_i25.ProductsRepo>(
        () => _i26.ProductsRepoImpl(gh<_i20.ProductsDataSource>()));
    gh.factory<_i27.GetCategoriesUseCase>(
        () => _i27.GetCategoriesUseCase(gh<_i22.CategoriesRepo>()));
    gh.factory<_i28.SignUpViewModel>(
        () => _i28.SignUpViewModel(gh<_i24.SignUpUseCase>()));
    gh.factory<_i29.getSubCategoriesOfSpecificCategoryUseCase>(() =>
        _i29.getSubCategoriesOfSpecificCategoryUseCase(
            gh<_i17.SubCategoriesRepo>()));
    gh.factory<_i30.GetMostSellingProductsUseCase>(
        () => _i30.GetMostSellingProductsUseCase(gh<_i25.ProductsRepo>()));
    gh.factory<_i31.HomeTabViewModel>(() => _i31.HomeTabViewModel(
          gh<_i27.GetCategoriesUseCase>(),
          gh<_i19.GetBrandsUseCase>(),
          gh<_i30.GetMostSellingProductsUseCase>(),
        ));
    return this;
  }
}
