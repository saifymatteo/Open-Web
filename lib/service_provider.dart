class ServiceProvider {
  static final instance = ServiceProvider._();

  ServiceProvider._();

  final _services = <Type, dynamic>{};

  void registerService<T>(T service) => _services[T] = service;

  void removeService<T>() => _services.remove(T);

  void clearServices() => _services.clear();

  T getService<T>() {
    if (!_services.containsKey(T)) {
      throw Exception('Service not found: $T');
    }

    return _services[T];
  }
}

T getService<T>() => ServiceProvider.instance.getService<T>();

T registerService<T>(T service) {
  ServiceProvider.instance.registerService<T>(service);
  return getService<T>();
}
