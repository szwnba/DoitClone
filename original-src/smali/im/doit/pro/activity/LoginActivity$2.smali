.class Lim/doit/pro/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LoginActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/LoginActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LoginActivity$2;->this$0:Lim/doit/pro/activity/LoginActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LoginActivity$2;)Lim/doit/pro/activity/LoginActivity;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$2;->this$0:Lim/doit/pro/activity/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onKeyboardShown()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$2;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity;->access$4(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$2;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity;->access$4(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lim/doit/pro/activity/LoginActivity$2$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LoginActivity$2$1;-><init>(Lim/doit/pro/activity/LoginActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    return-void
.end method
