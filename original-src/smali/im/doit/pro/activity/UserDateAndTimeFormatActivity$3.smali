.class Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;
.super Ljava/lang/Object;
.source "UserDateAndTimeFormatActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UserDateAndTimeFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    const-class v2, Lim/doit/pro/activity/UserWeekStartsOnActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;->this$0:Lim/doit/pro/activity/UserDateAndTimeFormatActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method
