.class Lim/doit/pro/activity/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LoginActivity$2;->onKeyboardShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/LoginActivity$2;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LoginActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LoginActivity$2$1;->this$1:Lim/doit/pro/activity/LoginActivity$2;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$2$1;->this$1:Lim/doit/pro/activity/LoginActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity$2;->access$0(Lim/doit/pro/activity/LoginActivity$2;)Lim/doit/pro/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity;->access$4(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity$2$1;->this$1:Lim/doit/pro/activity/LoginActivity$2;

    invoke-static {v2}, Lim/doit/pro/activity/LoginActivity$2;->access$0(Lim/doit/pro/activity/LoginActivity$2;)Lim/doit/pro/activity/LoginActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/LoginActivity;->access$5(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 113
    return-void
.end method
