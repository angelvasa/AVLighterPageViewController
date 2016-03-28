# AVLighterPageViewController

**Why AVLighterPageViewController?**

As an iOS developer we sometimes need to paginate the viewcontrollers or views, and for that we need to implement delegates and datasource and/or make some calculation for pagination. but as a solution we can make one lighter delegate & datasoucre class which will handle all the mess for you.


**How to use it**

You just need to copy 2 classes from above demo project 


**1) AVPageViewController**

**2) AVPageContentViewController**

**Feeling lazy to copy**
You can always do pod install, add following line into your podfile
```
pod 'AVLighterPageViewController'
```

-- After this you need to add NSObject into your storyboard, and apply custom class to AVPageViewController for that NSObject

-- Now create custom xib or viewcontroller in storyboard and subclass that class with AVPageContentViewController, in XIB or storyboard you need to apply custom class to AVPageContentViewController

-- In your viewcontroller you can add below line and you are done with pagination!! 

```
    self.pageController?.setupControllers([Array of viewcontrollers], viewControllerFrameRect: CGRectMake(margin, margin, self.view.frame.size.width - 2 * margin, self.view.frame.size.height - 100), withPresentingViewControllerIndex: 0)
        self.addChildViewController(self.pageController!)
        self.view.addSubview(self.pageController!.view)
        self.pageController!.didMoveToParentViewController(self)
```


**All are viewcontrollers so you can add any views to each page


![AVPageViewController](https://github.com/angelvasa/AVLighterPageViewController/blob/master/Simulator%20Screen%20Shot%2013-Jan-2016%2C%202.40.06%20PM.png)


-- Hope you like it. 

**If you have any query or suggestion you can always contact me at vasaangel91@gmail.com**
