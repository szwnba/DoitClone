.class Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;
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
    name = "OnSaveBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$3(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 334
    return-void
.end method
