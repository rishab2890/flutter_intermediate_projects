import 'package:get_it/get_it.dart';
import 'package:skeliton_watcher/scoped_models/home_view_model.dart';
import 'package:skeliton_watcher/scoped_models/feed_back_view_model.dart';

GetIt locator = new GetIt();

void setupLocator() {
  // Register services
    
  // Register ScopedModels
  locator.registerFactory<HomeViewModel>(() => HomeViewModel());
  locator.registerFactory<FeedBackViewModel>(() => FeedBackViewModel());
}

