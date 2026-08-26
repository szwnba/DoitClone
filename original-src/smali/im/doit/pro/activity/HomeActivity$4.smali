.class Lim/doit/pro/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$4;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$4;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$8(Lim/doit/pro/activity/HomeActivity;)V

    .line 530
    return-void
.end method
