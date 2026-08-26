.class Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTaskContextClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)Lim/doit/pro/activity/ProjectDetailActivity;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    new-instance v0, Lim/doit/pro/ui/component/SelectTaskContextDialog;

    .line 506
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 505
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;-><init>(Landroid/app/Activity;)V

    .line 507
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectTaskContextDialog;
    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick$1;-><init>(Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->setOnTaskContextFinishListner(Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;)V

    .line 515
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnTaskContextClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->showDialog(Ljava/lang/String;)V

    .line 516
    return-void
.end method
