.class Lim/doit/pro/github/GitHubSync$HttpResp;
.super Ljava/lang/Object;
.source "GitHubSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/github/GitHubSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpResp"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field code:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/github/GitHubSync$1;)V
    .registers 2

    .line 297
    invoke-direct {p0}, Lim/doit/pro/github/GitHubSync$HttpResp;-><init>()V

    return-void
.end method
