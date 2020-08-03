# Composition Root && DI 

What we have here today composition Root design Pattern, also MVP design pattern and custom propertyWrapper of swift.

With this property wrapper and composition root reduce your dependancies of your application, and keep you source code more native.
You can replace Swinject/SwinjectStoryboard.

![Screenshot](https://github.com/ragaie/CompositionRoot-MVP-DI-PropertyWrapper/blob/master/CompositionRoot%26MVP/IMG_4641.JPG)



#  Composition Root:-
A composition Root is a (preferably) unique location in an application where modules are composed together.

In our example we talk about iOS development so we call composer in AppDelegate.

Idea of this design pattern compose all objects in starting of application in one place, we divided this responsibility for every model have his own composer then root composer call all of them.
 
Every composer should conform  Composer protocol

```
protocol Composer {
    func register()
}
```


Inside register func should add dependences need for this module like this one :-

```
struct HomeComposer : Composer {
    func register() {
        Dependencies.root.add({HomeViewController() as HomeViewDelegate})
        Dependencies.root.add({HomePresenter() as HomePresenterDelegate})
    }
}
```

# Root composer : 

```
struct RootComposer :Composer{
    func register() {
        HomeComposer().register()
        DetailComposer().register()
    }
}
```

# Then just call root composer in app starting in app delegate:-

Inside 

Init or didFinishLaunchingWithOptions.
```
   RootComposer().register()

```

Then MVP design pattern and layer added for our example :-

Of course you can have more component than this based your besuiness, this just small example for inject dependency only.

1- View 

2- Presenter

3- Connections file this contains protocol for connection between parts of view and presenter.

4- Composer file contain composer that responsible for compose dependency for this module.


![Screenshot](https://github.com/ragaie/CompositionRoot-MVP-DI-PropertyWrapper/blob/master/CompositionRoot%26MVP/IMG_1078.JPG)


# @inject

```
 @Inject var myPresenter : HomePresenterDelegate
```

Then came best part propertyWrapper of swift:-

```
@propertyWrapper
public struct Inject<Value> {
    
    public var wrappedValue: Value {
        Dependencies.root.resolve()
    }
    
    public init() {}
}
```

Once you mark var with @inject it will get these dependency from root composer container.

Also we have Dependencies this class used to store and retrieve  dependencies.

```
class Dependencies {
    static var root = Dependencies()
    private var factories = [String: () -> Any]()
    
    func add<T>(_ factory: @escaping () -> T) {
        let key = String(describing: T.self)
        factories[key] = factory
    }

    func resolve<T>() -> T {
        let key = String(describing: T.self)
        
        guard let component: T = factories[key]?() as? T else {
            fatalError("Dependency '\(T.self)' not resolved!")
        }
        
        return component
    }
}	
```

Finally don’t forget to compose Dependencies of module in root composer before using it.

Also of course you can modify it and rename it as your business required.

I have reference help to produce this example : 
https://basememara.com/swift-dependency-injection-via-property-wrapper/

## Author

* **Ragaie alfy Fahmey**  - [ragaie](https://github.com/ragaie)

## You can find me in linked in 
- [Ragaie alfy](www.linkedin.com/in/ragaie-alfy)
