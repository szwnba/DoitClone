.class Lim/doit/pro/activity/AttachFromEvernoteActivity$2;
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
        "Ljava/util/List",
        "<",
        "Lcom/evernote/edam/type/Notebook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 259
    invoke-direct {p0}, Lcom/evernote/client/android/OnClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 275
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p1}, Lim/doit/pro/utils/DEvernoteUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$15(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 278
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/evernote/edam/type/Notebook;>;"
    const/4 v6, 0x0

    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$5(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/util/List;)V

    .line 264
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$6(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$7(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$8(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V

    .line 267
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v3

    .line 268
    new-instance v4, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;

    iget-object v5, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {v4, v5, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;)V

    .line 267
    invoke-static {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$12(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V

    .line 269
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$13(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$2;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$14(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    .line 271
    return-void
.end method
