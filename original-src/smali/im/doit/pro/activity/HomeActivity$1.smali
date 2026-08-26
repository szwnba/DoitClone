.class Lim/doit/pro/activity/HomeActivity$1;
.super Ljava/util/TimerTask;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->onBackClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/HomeActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$1;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 169
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$1;->this$0:Lim/doit/pro/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/HomeActivity;->access$0(Lim/doit/pro/activity/HomeActivity;Z)V

    .line 173
    return-void
.end method
