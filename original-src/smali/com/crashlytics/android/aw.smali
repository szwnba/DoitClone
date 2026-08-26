.class final Lcom/crashlytics/android/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Z

.field private final e:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/aw;->a:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/aw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/aw;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/crashlytics/android/aw;->f:Landroid/content/Context;

    .line 82
    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    invoke-static {p1, v0, v2}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    .line 83
    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device ID collection disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 87
    :cond_1
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, v0, v2}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crashlytics/android/aw;->e:Z

    .line 88
    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->e:Z

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User information collection disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 91
    :cond_2
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/crashlytics/android/aw;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashlytics.installation.id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/aw;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/aw;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/ax;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/ax;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p2, :cond_0

    .line 222
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/crashlytics/android/aw;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/crashlytics/android/aw;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/crashlytics/android/aw;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 294
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v2, "Could not retrieve android.os.Build.SERIAL value"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 300
    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->e:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->a:Ljava/lang/String;

    .line 123
    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/crashlytics/android/ba;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/crashlytics/android/aw;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const-string v0, ""

    .line 165
    iget-boolean v1, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/crashlytics/android/aw;->g()Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/crashlytics/android/ba;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0, v1}, Lcom/crashlytics/android/aw;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/ax;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 211
    sget-object v0, Lcom/crashlytics/android/ax;->c:Lcom/crashlytics/android/ax;

    invoke-virtual {p0}, Lcom/crashlytics/android/aw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/crashlytics/android/aw;->a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V

    .line 212
    sget-object v3, Lcom/crashlytics/android/ax;->d:Lcom/crashlytics/android/ax;

    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/aw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/aw;->f:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/crashlytics/android/aw;->a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/crashlytics/android/ax;->e:Lcom/crashlytics/android/ax;

    invoke-direct {p0}, Lcom/crashlytics/android/aw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/crashlytics/android/aw;->a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V

    .line 214
    sget-object v3, Lcom/crashlytics/android/ax;->a:Lcom/crashlytics/android/ax;

    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/aw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/aw;->f:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/crashlytics/android/aw;->a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/crashlytics/android/ax;->b:Lcom/crashlytics/android/ax;

    invoke-virtual {p0}, Lcom/crashlytics/android/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/aw;->a(Ljava/util/Map;Lcom/crashlytics/android/ax;Ljava/lang/String;)V

    .line 217
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 212
    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    iget-boolean v1, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/crashlytics/android/aw;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-static {v1}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/crashlytics/android/aw;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/aw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/aw;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
