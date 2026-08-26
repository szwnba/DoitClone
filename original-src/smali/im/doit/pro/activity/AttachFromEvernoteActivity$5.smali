.class Lim/doit/pro/activity/AttachFromEvernoteActivity$5;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 7

    .prologue
    .line 397
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$8(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V

    .line 398
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$10(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$11(Lim/doit/pro/activity/AttachFromEvernoteActivity;)I

    move-result v3

    .line 399
    new-instance v4, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;

    iget-object v5, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$5;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$LoadMoreNotesCallback;)V

    .line 398
    invoke-static {v0, v1, v2, v3, v4}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$12(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;ILcom/evernote/client/android/OnClientCallback;)V

    .line 400
    return-void
.end method
