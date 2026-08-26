.class Lim/doit/pro/activity/AttachFromEvernoteActivity$8;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 7
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    const/4 v6, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$18(Lim/doit/pro/activity/AttachFromEvernoteActivity;Z)V

    .line 464
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$7(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$8(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V

    .line 466
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$6(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v3

    new-instance v4, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;

    iget-object v5, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$8;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {v4, v5, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$ReloadNotesCallback;)V

    invoke-static {v1, v6, v2, v3, v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$12(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V

    .line 469
    :cond_0
    return-void
.end method
