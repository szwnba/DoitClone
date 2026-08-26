.class Lim/doit/pro/activity/UpgradeToProActivity$2;
.super Ljava/lang/Object;
.source "UpgradeToProActivity.java"

# interfaces
.implements Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UpgradeToProActivity;
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
    iput-object p1, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Inventory;)V
    .locals 7
    .param p1, "result"    # Lim/doit/pro/billing/IabResult;
    .param p2, "inventory"    # Lim/doit/pro/billing/Inventory;

    .prologue
    .line 231
    const-string v4, "Query inventory finished."

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 234
    iget-object v4, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v4}, Lim/doit/pro/activity/UpgradeToProActivity;->access$0(Lim/doit/pro/activity/UpgradeToProActivity;)Lim/doit/pro/billing/IabHelper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 282
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to query inventory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in-app billing query inventory failed, result : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/model/AgentError;->buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;

    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 244
    iget-object v4, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lim/doit/pro/activity/UpgradeToProActivity;->access$1(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/IabHelper;)V

    goto :goto_0

    .line 248
    :cond_1
    const-string v4, "Query inventory was successful."

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 251
    const-string v5, "in-app billing query inventory success"

    invoke-static {v5}, Lim/doit/pro/model/AgentError;->buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;

    move-result-object v5

    .line 250
    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 254
    if-eqz p2, :cond_2

    .line 255
    const-string v4, "im.doit.pro.v4.yearly"

    invoke-virtual {p2, v4}, Lim/doit/pro/billing/Inventory;->getSkuDetails(Ljava/lang/String;)Lim/doit/pro/billing/SkuDetails;

    move-result-object v0

    .line 256
    .local v0, "details":Lim/doit/pro/billing/SkuDetails;
    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Lim/doit/pro/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "price":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v4, v2}, Lim/doit/pro/activity/UpgradeToProActivity;->access$2(Lim/doit/pro/activity/UpgradeToProActivity;Ljava/lang/String;)V

    .line 261
    .end local v0    # "details":Lim/doit/pro/billing/SkuDetails;
    .end local v2    # "price":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lim/doit/pro/billing/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "needSync":Z
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in-app billing query inventory success. purchase size : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Lim/doit/pro/billing/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/model/AgentError;->buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;

    move-result-object v5

    .line 264
    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 267
    invoke-virtual {p2}, Lim/doit/pro/billing/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 274
    if-eqz v1, :cond_4

    .line 276
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 280
    .end local v1    # "needSync":Z
    :cond_4
    const-string v4, "Initial inventory query finished; enabling main UI."

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 281
    iget-object v4, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    iget-object v4, v4, Lim/doit/pro/activity/UpgradeToProActivity;->buyNowBtn:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 267
    .restart local v1    # "needSync":Z
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/billing/Purchase;

    .line 268
    .local v3, "purchase":Lim/doit/pro/billing/Purchase;
    if-eqz v3, :cond_3

    iget-object v5, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-virtual {v5, v3}, Lim/doit/pro/activity/UpgradeToProActivity;->verifyDeveloperPayload(Lim/doit/pro/billing/Purchase;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    iget-object v5, p0, Lim/doit/pro/activity/UpgradeToProActivity$2;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v5, v3}, Lim/doit/pro/activity/UpgradeToProActivity;->access$3(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/Purchase;)V

    .line 271
    const/4 v1, 0x1

    goto :goto_1
.end method
