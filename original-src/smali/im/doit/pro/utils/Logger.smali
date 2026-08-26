.class public Lim/doit/pro/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static ENABLE_LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DOITIM"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lim/doit/pro/utils/Logger;->ENABLE_LOG:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2
    .param p0, "logMe"    # Ljava/lang/Object;

    .prologue
    .line 12
    sget-boolean v0, Lim/doit/pro/utils/Logger;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "DOITIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 2
    .param p0, "logMe"    # Ljava/lang/Object;

    .prologue
    .line 18
    const-string v0, "DOITIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method
