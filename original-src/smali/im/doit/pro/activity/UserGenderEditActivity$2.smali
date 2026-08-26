.class Lim/doit/pro/activity/UserGenderEditActivity$2;
.super Ljava/lang/Object;
.source "UserGenderEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/UserGenderEditActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserGenderEditActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserGenderEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserGenderEditActivity$2;->this$0:Lim/doit/pro/activity/UserGenderEditActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity$2;->this$0:Lim/doit/pro/activity/UserGenderEditActivity;

    const-string v1, "female"

    invoke-static {v0, v1}, Lim/doit/pro/activity/UserGenderEditActivity;->access$0(Lim/doit/pro/activity/UserGenderEditActivity;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity$2;->this$0:Lim/doit/pro/activity/UserGenderEditActivity;

    invoke-static {v0}, Lim/doit/pro/activity/UserGenderEditActivity;->access$1(Lim/doit/pro/activity/UserGenderEditActivity;)V

    .line 74
    return-void
.end method
