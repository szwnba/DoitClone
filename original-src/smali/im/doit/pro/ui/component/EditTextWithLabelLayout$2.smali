.class Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;
.super Ljava/lang/Object;
.source "EditTextWithLabelLayout.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/EditTextWithLabelLayout;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 163
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    invoke-static {v0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->access$1(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    invoke-static {v0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->access$1(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;->done(Landroid/widget/EditText;)V

    .line 166
    :cond_0
    return-void
.end method
