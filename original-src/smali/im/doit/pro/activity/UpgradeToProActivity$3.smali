.class Lim/doit/pro/activity/UpgradeToProActivity$3;
.super Ljava/lang/Object;
.source "UpgradeToProActivity.java"

# interfaces
.implements Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/UpgradeToProActivity$3;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V
    .locals 3
    .param p1, "result"    # Lim/doit/pro/billing/IabResult;
    .param p2, "purchase"    # Lim/doit/pro/billing/Purchase;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase finished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in-app billing purchase finished. result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/AgentError;->buildPurchaseError(Ljava/lang/String;)Lim/doit/pro/model/AgentError;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    .line 299
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity$3;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v0}, Lim/doit/pro/activity/UpgradeToProActivity;->access$0(Lim/doit/pro/activity/UpgradeToProActivity;)Lim/doit/pro/billing/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error purchasing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity$3;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/UpgradeToProActivity;->access$4(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/IabResult;)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity$3;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-virtual {v0, p2}, Lim/doit/pro/activity/UpgradeToProActivity;->verifyDeveloperPayload(Lim/doit/pro/billing/Purchase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    const-string v0, "Error purchasing. Authenticity verification failed."

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_3
    const-string v0, "Purchase successful."

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p2}, Lim/doit/pro/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "im.doit.pro.v4.yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity$3;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-static {v0, p2}, Lim/doit/pro/activity/UpgradeToProActivity;->access$3(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/Purchase;)V

    .line 318
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    goto :goto_0
.end method
