.class Lim/doit/pro/activity/SmartAddActivity$1;
.super Ljava/lang/Object;
.source "SmartAddActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SmartAddActivity;->setViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SmartAddActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$1;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 302
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$1;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/SmartAddActivity;->onSaveClick(Landroid/view/View;)V

    .line 303
    return-void
.end method
