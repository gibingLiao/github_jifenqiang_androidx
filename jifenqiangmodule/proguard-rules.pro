# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\studio_sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-optimizationpasses 5
#不优化输入的类文件
-dontoptimize

-ignorewarnings

-repackageclasses 'wowan'


# 混合时不使用大小写混合，混合后的类名为小写
-dontusemixedcaseclassnames

# 指定不去忽略非公共库的类
-dontskipnonpubliclibraryclasses

# 这句话能够使我们的项目混淆后产生映射文件
# 包含有类名->混淆后类名的映射关系
-verbose

# 指定不去忽略非公共库的类成员
-dontskipnonpubliclibraryclassmembers

# 不做预校验，preverify是proguard的四个步骤之一，Android不需要preverify，去掉这一步能够加快混淆速度。
-dontpreverify

# 保留Annotation不混淆
-keepattributes *Annotation*,InnerClasses

# 避免混淆泛型
-keepattributes Signature

# 抛出异常时保留代码行号
-keepattributes SourceFile,LineNumberTable

# 保留R下面的资源
-keep class **.R$* {*;}

#优化
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#保护内部类
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod


#OkHttp3混淆配置
-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp3.** { *;}
-dontwarn okio.**


# universal-image-loader 混淆
-dontwarn com.nostra13.universalimageloader.**
-keep class com.nostra13.universalimageloader.** { *; }


#保持JS不混淆。
-keepattributes Annotation
#2.保留跟 javascript相关的属性
-keepattributes JavascriptInterface
#3.保留JavascriptInterface中的方法
-keepclassmembers class * {
@android.webkit.JavascriptInterface <methods>;
}

-dontwarn com.liulishuo.filedownloader.**
-keep class com.liulishuo.filedownloader.** {*;}
