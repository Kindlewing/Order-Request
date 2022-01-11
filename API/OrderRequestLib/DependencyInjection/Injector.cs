using OrderRequestLib.Database;
using Unity;


namespace OrderRequestLib.DependencyInjection {

    public static class Injector
    {
        private static IUnityContainer _container;

        public static void RegisterTypes(IUnityContainer container)
        {
            _container = container;
        }

      
        public static T Resolve<T>()
        {
            // Return the resolution of the type passed in
            return (T)_container.Resolve(typeof(T));
        }
    }
}