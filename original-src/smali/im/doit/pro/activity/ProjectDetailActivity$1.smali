.class Lim/doit/pro/activity/ProjectDetailActivity$1;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Lim/doit/pro/model/Media;)V
    .locals 2
    .param p1, "media"    # Lim/doit/pro/model/Media;

    .prologue
    .line 271
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setMedias(Ljava/util/ArrayList;)V

    .line 273
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$1(Lim/doit/pro/activity/ProjectDetailActivity;)Z

    .line 274
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$1;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$2(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 275
    return-void
.end method
