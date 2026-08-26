.class Lim/doit/pro/activity/AttachFromEvernoteActivity$10;
.super Lcom/evernote/client/android/OnClientCallback;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evernote/client/android/OnClientCallback",
        "<",
        "Lcom/evernote/edam/type/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 502
    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method

.method private saveEvernoteUsername(Lcom/evernote/edam/type/User;)V
    .locals 4
    .param p1, "user"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 516
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    move-result-object v0

    .line 517
    .local v0, "evernoteInfo":Lim/doit/pro/model/Evernote;
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Evernote;->setUsername(Ljava/lang/String;)V

    .line 518
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2, v0}, Lim/doit/pro/model/User;->setEvernote(Lim/doit/pro/model/Evernote;)V

    .line 519
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 520
    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/EvernoteSession;->logOut(Landroid/content/Context;)V

    .line 527
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setJsonEvernote(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/evernote/client/android/InvalidAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$22(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    invoke-virtual {v0}, Lcom/evernote/client/android/InvalidAuthenticationException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/evernote/edam/type/User;)V
    .locals 1
    .param p1, "user"    # Lcom/evernote/edam/type/User;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->saveEvernoteUsername(Lcom/evernote/edam/type/User;)V

    .line 507
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$21(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 508
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$15(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 509
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/evernote/edam/type/User;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$10;->onSuccess(Lcom/evernote/edam/type/User;)V

    return-void
.end method
