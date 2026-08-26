.class Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 326
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->finish()V

    .line 327
    return-void
.end method
