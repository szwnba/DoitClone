.class final enum Lcom/crashlytics/android/ax;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/ax;

.field public static final enum b:Lcom/crashlytics/android/ax;

.field public static final enum c:Lcom/crashlytics/android/ax;

.field public static final enum d:Lcom/crashlytics/android/ax;

.field public static final enum e:Lcom/crashlytics/android/ax;

.field private static final synthetic g:[Lcom/crashlytics/android/ax;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 58
    new-instance v0, Lcom/crashlytics/android/ax;

    const-string v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v5, v3}, Lcom/crashlytics/android/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/ax;->a:Lcom/crashlytics/android/ax;

    new-instance v0, Lcom/crashlytics/android/ax;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v3, v4}, Lcom/crashlytics/android/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/ax;->b:Lcom/crashlytics/android/ax;

    new-instance v0, Lcom/crashlytics/android/ax;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/crashlytics/android/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/ax;->c:Lcom/crashlytics/android/ax;

    new-instance v0, Lcom/crashlytics/android/ax;

    const-string v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v6, v2}, Lcom/crashlytics/android/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/ax;->d:Lcom/crashlytics/android/ax;

    new-instance v0, Lcom/crashlytics/android/ax;

    const-string v1, "ANDROID_SERIAL"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v7, v2}, Lcom/crashlytics/android/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/ax;->e:Lcom/crashlytics/android/ax;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/crashlytics/android/ax;

    sget-object v1, Lcom/crashlytics/android/ax;->a:Lcom/crashlytics/android/ax;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/ax;->b:Lcom/crashlytics/android/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/ax;->c:Lcom/crashlytics/android/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/ax;->d:Lcom/crashlytics/android/ax;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/ax;->e:Lcom/crashlytics/android/ax;

    aput-object v1, v0, v7

    sput-object v0, Lcom/crashlytics/android/ax;->g:[Lcom/crashlytics/android/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/crashlytics/android/ax;->f:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/ax;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/crashlytics/android/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ax;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/ax;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/crashlytics/android/ax;->g:[Lcom/crashlytics/android/ax;

    invoke-virtual {v0}, [Lcom/crashlytics/android/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/ax;

    return-object v0
.end method
