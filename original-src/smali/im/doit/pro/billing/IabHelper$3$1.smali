.class Lim/doit/pro/billing/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/billing/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/billing/IabHelper$3;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$results:Ljava/util/List;

.field private final synthetic val$singleListener:Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lim/doit/pro/billing/IabHelper$3;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/billing/IabHelper$3$1;->this$1:Lim/doit/pro/billing/IabHelper$3;

    iput-object p2, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$singleListener:Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p3, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$results:Ljava/util/List;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 972
    iget-object v2, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$singleListener:Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/billing/Purchase;

    iget-object v1, p0, Lim/doit/pro/billing/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/billing/IabResult;

    invoke-interface {v2, v0, v1}, Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lim/doit/pro/billing/Purchase;Lim/doit/pro/billing/IabResult;)V

    .line 973
    return-void
.end method
