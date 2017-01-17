#if os(iOS)
    import UIKit
#else
    import AppKit
#endif

#if os(iOS)
    public typealias ConstraidLayoutPriority = UILayoutPriority
let ConstraidLayoutPriorityRequired: ConstraidLayoutPriority = UILayoutPriorityRequired
let ConstraidLayoutPriorityDefaultHigh: ConstraidLayoutPriority = UILayoutPriorityDefaultHigh
let ConstraidLayoutPriorityDefaultLow: ConstraidLayoutPriority = UILayoutPriorityDefaultLow
let ConstraidLayoutPriorityFittingSizeLevel: ConstraidLayoutPriority = UILayoutPriorityFittingSizeLevel
#else
    public typealias ConstraidLayoutPriority = NSLayoutPriority
let ConstraidLayoutPriorityRequired: ConstraidLayoutPriority = NSLayoutPriorityRequired
let ConstraidLayoutPriorityDefaultHigh: ConstraidLayoutPriority = NSLayoutPriorityDefaultHigh
let ConstraidLayoutPriorityDragThatCanResizeWindow: ConstraidLayoutPriority = NSLayoutPriorityDragThatCanResizeWindow
let ConstraidLayoutPriorityWindowSizeStayPut: ConstraidLayoutPriority = NSLayoutPriorityWindowSizeStayPut
let ConstraidLayoutPriorityDragThatCannotResizeWindow: ConstraidLayoutPriority = NSLayoutPriorityDragThatCannotResizeWindow
let ConstraidLayoutPriorityDefaultLow: ConstraidLayoutPriority = NSLayoutPriorityDefaultLow
let ConstraidLayoutPriorityFittingSizeCompression: ConstraidLayoutPriority = NSLayoutPriorityFittingSizeCompression
#endif
