.class Lim/doit/pro/activity/SmartAddActivity$3;
.super Ljava/lang/Object;
.source "SmartAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$3;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity$3;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/SmartAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity$3;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/SmartAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity$3;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SmartAddActivity;->access$20(Lim/doit/pro/activity/SmartAddActivity;)V

    .line 424
    return-void
.end method
