.class Lim/doit/pro/activity/RemindPopupActivity$2$1;
.super Ljava/lang/Object;
.source "RemindPopupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/RemindPopupActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/RemindPopupActivity$2;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/RemindPopupActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/RemindPopupActivity$2$1;->this$1:Lim/doit/pro/activity/RemindPopupActivity$2;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$2$1;->this$1:Lim/doit/pro/activity/RemindPopupActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/RemindPopupActivity$2;->access$0(Lim/doit/pro/activity/RemindPopupActivity$2;)Lim/doit/pro/activity/RemindPopupActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/RemindPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity$2$1;->this$1:Lim/doit/pro/activity/RemindPopupActivity$2;

    invoke-static {v1}, Lim/doit/pro/activity/RemindPopupActivity$2;->access$0(Lim/doit/pro/activity/RemindPopupActivity$2;)Lim/doit/pro/activity/RemindPopupActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/RemindPopupActivity;->access$2(Lim/doit/pro/activity/RemindPopupActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 171
    return-void
.end method
