.class Lim/doit/pro/activity/AttachFromEvernoteActivity$1;
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
        "Ljava/lang/String;",
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
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 177
    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 197
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$4(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/Exception;)V

    .line 198
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v5}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;

    move-result-object v1

    .line 182
    .local v1, "item":Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v4

    .line 183
    invoke-virtual {v4}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "host":Ljava/lang/String;
    const-string v4, "https://%s/shard/%s/sh/%s/%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 185
    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v7}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$2(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    .line 184
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "shareUrl":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v2, "result":Landroid/content/Intent;
    const-string v4, "evernote_note_guid"

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v4, "evernote_note_title"

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v4, "evernote_note_share_url"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$3(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 191
    iget-object v4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    iget-object v4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$1;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->finish()V

    .line 193
    return-void
.end method
