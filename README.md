# google_auth

## added google_services.json in android/app
## build.gradle (project-level)

```
    dependencies {
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
        classpath 'com.android.tools.build:gradle:7.3.0'
        classpath 'com.google.gms:google-services:4.3.8'
    }
```

## build.gradle (app-level)

```
  
dependencies {
    implementation 'com.android.support:multidex:1.0.3'
    implementation(platform("com.google.firebase:firebase-bom:32.7.0"))
    // implementation("com.google.firebase:firebase-analytics")
}

apply plugin: 'com.google.gms.google-services'

```

## manifest file

```
  <!-- permissions start -->
    
    <uses-permission android:name="android.permission.INTERNET" />
    
    <!-- permissions end -->

```
