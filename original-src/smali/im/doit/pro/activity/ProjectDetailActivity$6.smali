.class Lim/doit/pro/activity/ProjectDetailActivity$6;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity;->focusOnTitle()V
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
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$6;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$6;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$10(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 577
    return-void
.end method
