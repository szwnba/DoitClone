.class Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 415
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$18(Lim/doit/pro/activity/AttachFromEvernoteActivity;Z)V

    .line 416
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$6(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$13(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$8(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V

    .line 423
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$7(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$19(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v3

    .line 426
    new-instance v4, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;

    iget-object v5, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v5}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;)V

    .line 425
    invoke-static {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$12(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V

    .line 427
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$6;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$13(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
