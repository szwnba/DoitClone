.class Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;
.super Ljava/lang/Object;
.source "EditTextWithLabelLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    invoke-static {v0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->access$0(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;->this$0:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    invoke-static {v0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->access$0(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;->change(Landroid/text/Editable;)V

    .line 157
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 145
    return-void
.end method
