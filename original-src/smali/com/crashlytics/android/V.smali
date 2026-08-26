.class final Lcom/crashlytics/android/V;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/crashlytics/android/V;->a:Lcom/crashlytics/android/F;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/crashlytics/android/V;->a:Lcom/crashlytics/android/F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/F;Z)Z

    .line 260
    return-void
.end method
