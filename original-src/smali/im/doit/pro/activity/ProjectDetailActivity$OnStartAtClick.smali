.class Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;
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
    name = "OnStartAtClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 445
    new-instance v0, Lim/doit/pro/ui/component/MoveToDialog;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 446
    const/4 v2, 0x0

    .line 445
    invoke-direct {v0, v1, v3, v2}, Lim/doit/pro/ui/component/MoveToDialog;-><init>(Landroid/app/Activity;ZZ)V

    .line 447
    .local v0, "dialog":Lim/doit/pro/ui/component/MoveToDialog;
    new-instance v1, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick$1;-><init>(Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/MoveToDialog;->setOnMoveFinishListner(Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;)V

    .line 457
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnStartAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lim/doit/pro/ui/component/MoveToDialog;->showDialog(Lim/doit/pro/model/BaseEntityWithPos;Z)V

    .line 458
    return-void
.end method
