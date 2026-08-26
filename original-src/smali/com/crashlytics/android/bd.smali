.class final enum Lcom/crashlytics/android/bd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/bd;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/crashlytics/android/bd;

.field private static enum b:Lcom/crashlytics/android/bd;

.field private static enum c:Lcom/crashlytics/android/bd;

.field private static enum d:Lcom/crashlytics/android/bd;

.field private static enum e:Lcom/crashlytics/android/bd;

.field private static enum f:Lcom/crashlytics/android/bd;

.field private static enum g:Lcom/crashlytics/android/bd;

.field private static enum h:Lcom/crashlytics/android/bd;

.field private static enum i:Lcom/crashlytics/android/bd;

.field private static enum j:Lcom/crashlytics/android/bd;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/bd;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[Lcom/crashlytics/android/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 170
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->a:Lcom/crashlytics/android/bd;

    .line 171
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->b:Lcom/crashlytics/android/bd;

    .line 172
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->c:Lcom/crashlytics/android/bd;

    .line 173
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->d:Lcom/crashlytics/android/bd;

    .line 174
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->e:Lcom/crashlytics/android/bd;

    .line 175
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->f:Lcom/crashlytics/android/bd;

    .line 176
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->g:Lcom/crashlytics/android/bd;

    .line 177
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->h:Lcom/crashlytics/android/bd;

    .line 178
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->i:Lcom/crashlytics/android/bd;

    .line 179
    new-instance v0, Lcom/crashlytics/android/bd;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/bd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/bd;->j:Lcom/crashlytics/android/bd;

    .line 169
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/crashlytics/android/bd;

    sget-object v1, Lcom/crashlytics/android/bd;->a:Lcom/crashlytics/android/bd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/bd;->b:Lcom/crashlytics/android/bd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/bd;->c:Lcom/crashlytics/android/bd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/bd;->d:Lcom/crashlytics/android/bd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/crashlytics/android/bd;->e:Lcom/crashlytics/android/bd;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/bd;->f:Lcom/crashlytics/android/bd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/bd;->g:Lcom/crashlytics/android/bd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/bd;->h:Lcom/crashlytics/android/bd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/bd;->i:Lcom/crashlytics/android/bd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crashlytics/android/bd;->j:Lcom/crashlytics/android/bd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/bd;->l:[Lcom/crashlytics/android/bd;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 183
    sput-object v0, Lcom/crashlytics/android/bd;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Lcom/crashlytics/android/bd;->g:Lcom/crashlytics/android/bd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/crashlytics/android/bd;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Lcom/crashlytics/android/bd;->f:Lcom/crashlytics/android/bd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/crashlytics/android/bd;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Lcom/crashlytics/android/bd;->a:Lcom/crashlytics/android/bd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lcom/crashlytics/android/bd;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v0, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/crashlytics/android/bd;->h:Lcom/crashlytics/android/bd;

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/crashlytics/android/bd;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/bd;

    .line 202
    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/crashlytics/android/bd;->h:Lcom/crashlytics/android/bd;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/bd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/crashlytics/android/bd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/bd;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/bd;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/crashlytics/android/bd;->l:[Lcom/crashlytics/android/bd;

    invoke-virtual {v0}, [Lcom/crashlytics/android/bd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/bd;

    return-object v0
.end method
