.class Lim/doit/pro/activity/ContactDetailActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactDetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$1;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$1;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/ContactDetailActivity;->finish()V

    .line 127
    return-void
.end method
