.class Lim/doit/pro/billing/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/billing/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/billing/IabHelper$2;

.field private final synthetic val$inv_f:Lim/doit/pro/billing/Inventory;

.field private final synthetic val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lim/doit/pro/billing/IabResult;


# direct methods
.method constructor <init>(Lim/doit/pro/billing/IabHelper$2;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/billing/IabHelper$2$1;->this$1:Lim/doit/pro/billing/IabHelper$2;

    iput-object p2, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$result_f:Lim/doit/pro/billing/IabResult;

    iput-object p4, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$inv_f:Lim/doit/pro/billing/Inventory;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$listener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$result_f:Lim/doit/pro/billing/IabResult;

    iget-object v2, p0, Lim/doit/pro/billing/IabHelper$2$1;->val$inv_f:Lim/doit/pro/billing/Inventory;

    invoke-interface {v0, v1, v2}, Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Inventory;)V

    .line 637
    return-void
.end method
