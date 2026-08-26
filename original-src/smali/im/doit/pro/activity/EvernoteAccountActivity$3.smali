.class Lim/doit/pro/activity/EvernoteAccountActivity$3;
.super Lcom/evernote/client/android/OnClientCallback;
.source "EvernoteAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/EvernoteAccountActivity;->onUnlinkConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evernote/client/android/OnClientCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/EvernoteAccountActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    .line 108
    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    iget-object v0, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v0}, Lim/doit/pro/activity/EvernoteAccountActivity;->access$2(Lim/doit/pro/activity/EvernoteAccountActivity;)V

    .line 131
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/EvernoteAccountActivity$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/EvernoteSession;->logOut(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    .line 115
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/UserDao;->clearEvernote(Lim/doit/pro/model/User;)V

    .line 116
    iget-object v1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/EvernoteAccountActivity;->setResult(I)V

    .line 117
    iget-object v1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/EvernoteAccountActivity;->finish()V
    :try_end_0
    .catch Lcom/evernote/client/android/InvalidAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v1}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 124
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    :try_start_1
    invoke-virtual {v0}, Lcom/evernote/client/android/InvalidAuthenticationException;->printStackTrace()V

    .line 120
    iget-object v1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v1}, Lim/doit/pro/activity/EvernoteAccountActivity;->access$2(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iget-object v1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v1}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 121
    .end local v0    # "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    :catchall_0
    move-exception v1

    .line 122
    iget-object v2, p0, Lim/doit/pro/activity/EvernoteAccountActivity$3;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v2}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 123
    throw v1
.end method
