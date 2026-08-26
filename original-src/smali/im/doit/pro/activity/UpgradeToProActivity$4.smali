.class Lim/doit/pro/activity/UpgradeToProActivity$4;
.super Ljava/lang/Object;
.source "UpgradeToProActivity.java"

# interfaces
.implements Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/UpgradeToProActivity;->setupBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UpgradeToProActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UpgradeToProActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UpgradeToProActivity$4;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lim/doit/pro/billing/IabResult;)V
    .locals 4
    .param p1, "result"    # Lim/doit/pro/billing/IabResult;

    .prologue
    .line 191
    const-string v1, "Setup finished."

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in-app billing setup failed. result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/AgentError;->buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity$4;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v1}, Lim/doit/pro/activity/UpgradeToProActivity;->access$0(Lim/doit/pro/activity/UpgradeToProActivity;)Lim/doit/pro/billing/IabHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "Setup successful. Querying inventory."

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "im.doit.pro.v4.yearly"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity$4;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    iget-object v1, v1, Lim/doit/pro/activity/UpgradeToProActivity;->buyNowBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity$4;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v1}, Lim/doit/pro/activity/UpgradeToProActivity;->access$0(Lim/doit/pro/activity/UpgradeToProActivity;)Lim/doit/pro/billing/IabHelper;

    move-result-object v1

    const/4 v2, 0x1

    .line 212
    iget-object v3, p0, Lim/doit/pro/activity/UpgradeToProActivity$4;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    iget-object v3, v3, Lim/doit/pro/activity/UpgradeToProActivity;->mGotInventoryListener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    .line 211
    invoke-virtual {v1, v2, v0, v3}, Lim/doit/pro/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
