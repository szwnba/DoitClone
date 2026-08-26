.class Lim/doit/pro/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/billing/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lim/doit/pro/billing/IabHelper;ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/billing/IabHelper$2;->this$0:Lim/doit/pro/billing/IabHelper;

    iput-boolean p2, p0, Lim/doit/pro/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lim/doit/pro/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lim/doit/pro/billing/IabHelper$2;->val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lim/doit/pro/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 620
    new-instance v3, Lim/doit/pro/billing/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 621
    .local v3, "result":Lim/doit/pro/billing/IabResult;
    const/4 v1, 0x0

    .line 623
    .local v1, "inv":Lim/doit/pro/billing/Inventory;
    :try_start_0
    iget-object v5, p0, Lim/doit/pro/billing/IabHelper$2;->this$0:Lim/doit/pro/billing/IabHelper;

    iget-boolean v6, p0, Lim/doit/pro/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lim/doit/pro/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lim/doit/pro/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lim/doit/pro/billing/Inventory;
    :try_end_0
    .catch Lim/doit/pro/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 629
    :goto_0
    iget-object v5, p0, Lim/doit/pro/billing/IabHelper$2;->this$0:Lim/doit/pro/billing/IabHelper;

    invoke-virtual {v5}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 631
    move-object v4, v3

    .line 632
    .local v4, "result_f":Lim/doit/pro/billing/IabResult;
    move-object v2, v1

    .line 633
    .local v2, "inv_f":Lim/doit/pro/billing/Inventory;
    iget-object v5, p0, Lim/doit/pro/billing/IabHelper$2;->this$0:Lim/doit/pro/billing/IabHelper;

    iget-boolean v5, v5, Lim/doit/pro/billing/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lim/doit/pro/billing/IabHelper$2;->val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 634
    iget-object v5, p0, Lim/doit/pro/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lim/doit/pro/billing/IabHelper$2$1;

    iget-object v7, p0, Lim/doit/pro/billing/IabHelper$2;->val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lim/doit/pro/billing/IabHelper$2$1;-><init>(Lim/doit/pro/billing/IabHelper$2;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_0
    return-void

    .line 625
    .end local v2    # "inv_f":Lim/doit/pro/billing/Inventory;
    .end local v4    # "result_f":Lim/doit/pro/billing/IabResult;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "ex":Lim/doit/pro/billing/IabException;
    invoke-virtual {v0}, Lim/doit/pro/billing/IabException;->getResult()Lim/doit/pro/billing/IabResult;

    move-result-object v3

    goto :goto_0
.end method
