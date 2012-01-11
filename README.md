AccessibilityLanguage Test
==========================

iOS provides a great API for making an app accessible. It works great for normal cases.

Some apps may have labels in more than one language in a view (think about vocabulary apps). For this the property `accessibilityLanguage` can be used to set a language of a label of a view. But this property doesn't seem to work (at least up until 5.1 B3).

This project contains a test app that has a UITableView with cells with text in different languages where the `accessibilityLanguage` property is set accordingly.

The bug is reported as # 10675372 (https://openradar.appspot.com/radar?id=1487406)
