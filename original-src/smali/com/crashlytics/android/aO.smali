.class final enum Lcom/crashlytics/android/aO;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/aO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/aO;

.field public static final enum b:Lcom/crashlytics/android/aO;

.field public static final enum c:Lcom/crashlytics/android/aO;

.field public static final enum d:Lcom/crashlytics/android/aO;

.field public static final enum e:Lcom/crashlytics/android/aO;

.field public static final enum f:Lcom/crashlytics/android/aO;

.field public static final enum g:Lcom/crashlytics/android/aO;

.field public static final enum h:Lcom/crashlytics/android/aO;

.field public static final enum i:Lcom/crashlytics/android/aO;

.field private static final synthetic j:[Lcom/crashlytics/android/aO;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->a:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->b:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->c:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "SAVE_INSTANCE_STATE"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->d:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->e:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->f:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->g:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->h:Lcom/crashlytics/android/aO;

    new-instance v0, Lcom/crashlytics/android/aO;

    const-string v1, "CRASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/aO;->i:Lcom/crashlytics/android/aO;

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/crashlytics/android/aO;

    sget-object v1, Lcom/crashlytics/android/aO;->a:Lcom/crashlytics/android/aO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/aO;->b:Lcom/crashlytics/android/aO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/aO;->c:Lcom/crashlytics/android/aO;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/aO;->d:Lcom/crashlytics/android/aO;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/aO;->e:Lcom/crashlytics/android/aO;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/aO;->f:Lcom/crashlytics/android/aO;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/aO;->g:Lcom/crashlytics/android/aO;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/aO;->h:Lcom/crashlytics/android/aO;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/aO;->i:Lcom/crashlytics/android/aO;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/aO;->j:[Lcom/crashlytics/android/aO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/aO;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/crashlytics/android/aO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/aO;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/aO;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/crashlytics/android/aO;->j:[Lcom/crashlytics/android/aO;

    invoke-virtual {v0}, [Lcom/crashlytics/android/aO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/aO;

    return-object v0
.end method
