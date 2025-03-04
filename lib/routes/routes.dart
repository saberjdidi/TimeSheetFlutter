class TRoutes {

  static const login = '/login';
  static const resetPassword = '/reset-password';
  static const forgetPassword = '/forget-password/';
  static const signup = '/signup';
  static const dashboard = '/dashboard';
  static const media = '/media';
  static const equipe = '/equipe';

  static const categories = '/categories';
  static const createCategory = '/createCategory';
  static const editCategory = '/editCategory';

  static const brands = '/brands';
  static const createBrand = '/createBrand';
  static const editBrand = '/editBrand';

  static const banners = '/banners';
  static const createBanner = '/createBanner';
  static const editBanner = '/editBanner';

  static const products = '/products';
  static const createProduct = '/createProduct';
  static const editProduct = '/editProduct';

  static const customers = '/customers';
  static const createCustomer = '/createCustomer';
  static const customerDetails = '/customerDetails';

  static const orders = '/orders';
  static const orderDetails = '/orderDetails';


  static const coupons = '/coupons';
  static const settings = '/settings';
  static const profile = '/profile';

  static const onBoarding = '/on-boarding';

  static List sidebarMenuItems = [
    dashboard, media, categories, brands, banners, products, customers, orders, settings, profile
  ];
}