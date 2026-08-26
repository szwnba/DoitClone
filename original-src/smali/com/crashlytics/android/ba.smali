.class final Lcom/crashlytics/android/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/crashlytics/android/internal/b;

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Boolean;

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/crashlytics/android/ba;->c:Ljava/lang/Boolean;

    .line 87
    new-instance v0, Lcom/crashlytics/android/internal/b;

    new-instance v1, Lcom/crashlytics/android/bb;

    const/4 v2, 0x4

    const-string v3, "Crashlytics"

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/bb;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/a;)V

    sput-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crashlytics/android/ba;->d:[C

    .line 715
    new-instance v0, Lcom/crashlytics/android/bc;

    invoke-direct {v0}, Lcom/crashlytics/android/bc;-><init>()V

    sput-object v0, Lcom/crashlytics/android/ba;->b:Ljava/util/Comparator;

    return-void

    .line 119
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Z)I
    .locals 6

    .prologue
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 605
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->b(Landroid/content/Context;)F

    move-result v0

    .line 607
    if-nez p0, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    .line 611
    :cond_0
    if-eqz p0, :cond_1

    float-to-double v2, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 612
    const/4 v0, 0x3

    goto :goto_0

    .line 615
    :cond_1
    if-eqz p0, :cond_2

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 616
    const/4 v0, 0x2

    goto :goto_0

    .line 619
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 370
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 371
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 372
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4

    .prologue
    .line 235
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 236
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 237
    const/4 v1, 0x0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 241
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    const-string v1, "com.crashlytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 780
    if-gez p0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%1$10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 735
    if-lez v0, :cond_0

    .line 736
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    const-string v3, "\\s*:\\s*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 141
    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 142
    array-length v3, v1

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v3, 0x1

    aget-object v0, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :cond_1
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 154
    :cond_2
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 149
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 148
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    const-string v0, "SHA-1"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 805
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 810
    const-string v1, "\\."

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(ILjava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 817
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 819
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->c()Lcom/crashlytics/android/aw;

    move-result-object v4

    .line 821
    :try_start_1
    const-string v0, "APPLICATION_INSTALLATION_UUID"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/crashlytics/android/aw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 827
    :goto_0
    invoke-virtual {v4}, Lcom/crashlytics/android/aw;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 829
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/ax;

    invoke-virtual {v1}, Lcom/crashlytics/android/ax;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v1

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not write value to JSON: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ax;

    invoke-virtual {v0}, Lcom/crashlytics/android/ax;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 812
    :catch_1
    move-exception v0

    .line 814
    const-string v1, "Could not create cipher to encrypt headers."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    const-string v0, ""

    .line 858
    :cond_0
    :goto_2
    return-object v0

    .line 822
    :catch_2
    move-exception v0

    .line 823
    const-string v1, "Could not write application id to JSON"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 837
    :cond_1
    :try_start_3
    const-string v0, "os_version"

    invoke-virtual {v4}, Lcom/crashlytics/android/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 844
    :goto_3
    :try_start_4
    const-string v0, "model"

    invoke-virtual {v4}, Lcom/crashlytics/android/aw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 850
    :goto_4
    const-string v0, ""

    .line 851
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 853
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ba;->a([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    goto :goto_2

    .line 838
    :catch_3
    move-exception v0

    .line 839
    const-string v1, "Could not write OS version to JSON"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 845
    :catch_4
    move-exception v0

    .line 846
    const-string v1, "Could not write model to JSON"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 854
    :catch_5
    move-exception v1

    .line 855
    const-string v2, "Could not encrypt IDs"

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 805
    :array_0
    .array-data 2
        0x73s
        0x6cs
        0x63s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 654
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 656
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 657
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 658
    shl-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/crashlytics/android/ba;->d:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 659
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/crashlytics/android/ba;->d:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create hashing algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning empty string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    const-string v0, ""

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 332
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 360
    :goto_0
    return-object v0

    .line 337
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    array-length v3, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p0, v0

    .line 341
    if-eqz v4, :cond_2

    .line 343
    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 356
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 636
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key must be at least 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AES/ECB/PKCS7Padding"

    invoke-direct {v0, v1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 639
    :try_start_0
    const-string v1, "AES/ECB/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 648
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 649
    return-object v1

    .line 642
    :catch_0
    move-exception v0

    .line 643
    const-string v1, "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/internal/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public static a(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 749
    if-eqz p0, :cond_0

    .line 751
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    invoke-static {p1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_0

    array-length v0, v2

    if-le v0, p2, :cond_0

    .line 698
    invoke-static {v2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 699
    array-length v1, v2

    .line 700
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 702
    if-gt v1, p2, :cond_1

    .line 709
    :cond_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 706
    add-int/lit8 v1, v1, -0x1

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 759
    if-eqz p0, :cond_0

    .line 761
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    invoke-static {p1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 886
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 888
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0, p1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 503
    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    .line 507
    const-string v1, "bool"

    invoke-static {p0, p1, v1}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 509
    if-lez v1, :cond_1

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 521
    :cond_0
    :goto_0
    return p2

    .line 513
    :cond_1
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 515
    if-lez v0, :cond_0

    .line 516
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 395
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 396
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 398
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/crashlytics/android/bd;->a()Lcom/crashlytics/android/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/bd;->ordinal()I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 383
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 385
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 386
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 387
    sub-long v0, v4, v0

    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    packed-switch p0, :pswitch_data_0

    .line 905
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 893
    :pswitch_0
    const-string v0, "A"

    goto :goto_0

    .line 895
    :pswitch_1
    const-string v0, "D"

    goto :goto_0

    .line 897
    :pswitch_2
    const-string v0, "E"

    goto :goto_0

    .line 899
    :pswitch_3
    const-string v0, "I"

    goto :goto_0

    .line 901
    :pswitch_4
    const-string v0, "V"

    goto :goto_0

    .line 903
    :pswitch_5
    const-string v0, "W"

    goto :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    invoke-static {p0}, Lcom/crashlytics/android/ba;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x4

    invoke-static {v0, p1, p2}, Lcom/crashlytics/android/ba;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    return-void
.end method

.method public static c()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 214
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "MemTotal"

    invoke-static {v2, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-wide v0

    .line 218
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    const-string v0, "KB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 230
    :goto_1
    shl-long/2addr v0, v5

    goto :goto_0

    .line 222
    :cond_2
    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    shl-long/2addr v0, v5

    goto :goto_1

    .line 226
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected meminfo format while computing RAM: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 288
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 292
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 293
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v1, "Could not calculate hash for app icon."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    const-string v0, ""

    :goto_1
    return-object v0

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/internal/b;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-static {}, Lcom/crashlytics/android/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 409
    :goto_0
    return v0

    .line 407
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 408
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 535
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 476
    sget-object v0, Lcom/crashlytics/android/ba;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 477
    const-string v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/ba;->c:Ljava/lang/Boolean;

    .line 480
    :cond_0
    sget-object v0, Lcom/crashlytics/android/ba;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 545
    invoke-static {}, Lcom/crashlytics/android/ba;->d()Z

    move-result v1

    .line 546
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 547
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 769
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 582
    invoke-static {}, Lcom/crashlytics/android/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 586
    :goto_0
    invoke-static {}, Lcom/crashlytics/android/ba;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    or-int/lit8 v0, v0, 0x2

    .line 590
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 591
    or-int/lit8 v0, v0, 0x4

    .line 594
    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
